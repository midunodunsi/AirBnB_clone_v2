#!/usr/bin/python3
""" City Module for HBNB project """

import os
from models.base_model import BaseModel, Base
from sqlalchemy import String, Column, ForeignKey


class City(BaseModel, Base):
    """ The city class, contains state ID and name """

    __tablename__ = 'cities'
    if os.getenv('HBNB_STORAGE_TYPE') == 'db':
        name = Column(String(128), nullable=False)
        state_id = Column(String(60), ForeignKey('states.id'), nullable=False)
    else:
        name = ''
        state_id = ''
