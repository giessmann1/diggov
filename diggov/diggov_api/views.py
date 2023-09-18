# Create your views here.

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import permissions
from .models import Todo
from .serializers import TodoSerializer
import mysql.connector
import json
from django.core.serializers.json import DjangoJSONEncoder

class TodoDetailApiView(APIView):

    def json_serial(obj):
        """JSON serializer for objects not serializable by default json code"""

        if isinstance(obj, (datetime, date)):
            return obj.isoformat()
        raise TypeError ("Type %s not serializable" % type(obj))

    def get_object(self, uebung_id, user_id):
        '''
        Helper method to get the object with given uebung_id and user_id
        '''
        mydb = mysql.connector.connect(
            host='localhost',
            port='3306',
            user='root',
            password='root',
            database='krankenhaus_uebung'
        )

        with open('diggov_api/query.sql', 'r') as file:
            query = file.read()

        query = query.format(uebung_id, user_id)

        mycursor = mydb.cursor()
        mycursor.execute(query)
        rv = mycursor.fetchall()
        row_count = mycursor.rowcount
        print(row_count)

        row_headers=[x[0] for x in mycursor.description] #this will extract row headers
        json_data=[]
        for result in rv:
            json_data.append(dict(zip(row_headers,result)))
        return json_data

    # 3. Retrieve
    def get(self, request, uebung_id, user_id, *args, **kwargs):
        '''
        Retrieves the questions with given uebung_id and user_id
        '''
        query_result = self.get_object(uebung_id, user_id)
        if not query_result:
            return Response(
                {None},
                status=status.HTTP_400_BAD_REQUEST
            )

        return Response(query_result, status=status.HTTP_200_OK)

    # 4. Update
    def put(self, request, todo_id, *args, **kwargs):
        '''
        Updates the todo item with given todo_id if exists
        '''
        todo_instance = self.get_object(todo_id, request.user.id)
        if not todo_instance:
            return Response(
                {"res": "Object with todo id does not exists"}, 
                status=status.HTTP_400_BAD_REQUEST
            )
        data = {
            'task': request.data.get('task'), 
            'completed': request.data.get('completed'), 
            'user': request.user.id
        }
        serializer = TodoSerializer(instance = todo_instance, data=data, partial = True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    # 5. Delete
    def delete(self, request, todo_id, *args, **kwargs):
        '''
        Deletes the todo item with given todo_id if exists
        '''
        todo_instance = self.get_object(todo_id, request.user.id)
        if not todo_instance:
            return Response(
                {"res": "Object with todo id does not exists"}, 
                status=status.HTTP_400_BAD_REQUEST
            )
        todo_instance.delete()
        return Response(
            {"res": "Object deleted!"},
            status=status.HTTP_200_OK
        )