FROM rasa/rasa:3.6.16-full
WORKDIR /app
COPY . /app
USER root
# Install any extra dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod +x start.sh
EXPOSE 5005
ENTRYPOINT ["/bin/bash", "./start.sh"]