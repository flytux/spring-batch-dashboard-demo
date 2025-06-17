# Spring-Batch-Demo

### 1. spring batch dashboard 실행

```
$ cd dashboard-docker-compose
$ docker compose up -d
```

### 2. spring batch 샘플 실행

```
$ ./mvnw clean package -DskipTests
$ java -jar ./target/spring-batch-demo-0.0.1-SNAPSHOT.jar

```

### 3. spring batch dashboard 접속

```
http://localhost:8080/

admin / admin
```

