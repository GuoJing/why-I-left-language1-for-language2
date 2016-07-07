FROM python
RUN pip install pip --upgrade
ADD ./ ./
WORKDIR ./
RUN pip install -r ./requirements.txt
EXPOSE 15000
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:15000", "-w", "4"]
