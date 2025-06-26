#This is a modified Dockerfile from lesson, here i just renamed from app to main and test it locally
# To ensure it works, run the following commands: add, for adding contact, add-birthday for adding bidthday, all and show-birthday

FROM python:3.12


ENV APP_HOME=/app


WORKDIR $APP_HOME


COPY . .


RUN pip install -r requirements.txt


EXPOSE 5000


ENTRYPOINT [ "python", "main.py" ]