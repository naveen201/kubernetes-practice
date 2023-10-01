𝗝𝗮𝘃𝗮 𝗮𝗽𝗽𝗹𝗶𝗰𝗮𝘁𝗶𝗼𝗻 𝗼𝗻 𝗞𝘂𝗯𝗲𝗿𝗻𝗲𝘁𝗲𝘀 𝗰𝗹𝘂𝘀𝘁𝗲𝗿 𝘂𝘀𝗶𝗻𝗴 𝗸𝘂𝗯𝗲𝗮𝗱𝗺

steps:-
1-Deployment
2-service
====================1-Deployment file====================
apiVersion: apps/v1
kind: Deployment
metadata:
  name: java-app-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: java-app
  template:
    metadata:
      labels:
        app: java-app
    spec:
      containers:
      - name: java-app-container
        image: naveen20/spring-boot-app:latest
        ports:
        - containerPort: 8080  # Port your Java application is listening on
        resources:
          limits:
            memory: "512Mi"  # Set appropriate memory and CPU limits based on your application requirements
            cpu: "0.5"

=================================2-service file========================
apiVersion: v1
kind: Service
metadata:
  name: spring-boot-app
spec:
  selector:
    app: java-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
  type: LoadBalancer


😍Access on browser.


