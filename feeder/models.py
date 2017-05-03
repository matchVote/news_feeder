from datetime import datetime
from feeder import db
from peewee import TextField, Model, IntegerField, DateTimeField
from playhouse.postgres_ext import ArrayField


class BaseModel(Model):
    class Meta:
        database = db


class Article(BaseModel):
    """ORM model for articles table."""

    url = TextField(primary_key=True)
    title = TextField(null=True)
    authors = ArrayField(field_class=TextField, null=True)
    publisher = TextField()
    date_published = DateTimeField(null=True)
    keywords = ArrayField(field_class=TextField, null=True)
    summary = TextField(null=True)
    mentioned_officials = ArrayField(field_class=TextField, null=True)
    read_time = IntegerField(null=True)
    created_at = DateTimeField(default=datetime.now)

    class Meta:
        db_table = 'articles'