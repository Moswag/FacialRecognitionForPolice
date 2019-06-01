from rest_framework import serializers
from .models import File


class FileSerializer(serializers.ModelSerializer):
  class Meta():
    model = File
    fields = ('file', 'remark', 'timestamp')

    # model = Person
    # fields = ('name', 'user_id', 'address', 'picture')