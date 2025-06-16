# spring-batch-dashboard demo

> [spring-batch-dashboard](https://github.com/making/spring-batch-dashboard)

### 실행방법
#### 1. postgres, spring-batch-dashboard 컨테이너 구동
```shell
docker compose up -d
```

#### 2. spring-batch schema 생성

```shell
# postgresql-client 설치
sudo apt update
sudo apt install postgresql-client

# schema 생성
PGPASSWORD=secret psql -h localhost -p 5432 -U myuser -d mydatabase -f ./schema-postgresql.sql
```

#### 3. spring-batch 데모 실행
> 데모 앱 경로: `./spring-batch-demo`

```shell
# 데모 프로젝트로 이동
cd ./spring-batch-demo

# schema 생성
PGPASSWORD=secret psql -h localhost -p 5432 -U myuser -d mydatabase -f ./src/main/resources/sample-schema.sql

# 앱 실행
mvn clean package -DskipTests
java -jar ./target/spring-batch-demo-0.0.1-SNAPSHOT.jar
```

#### 4. dashboard 확인

- http://localhost:8080 접속
  - 로그인: admin / secret
