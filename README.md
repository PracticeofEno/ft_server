# ft_server
## 설정 정보
- 도커 컨테이너 위에서 돌아가는 nginx 웹서버
- OS는 debain:buster
- 웹 서버는 WordPress와 phpmyadmin, MySQL을 지원해야함
- SSL을 지원해야함
- 80 포트로 접속하면 SSL포트로 리디렉션 해야함

## 과제에 있는 개념
### - What is docker?
1. #### 초창기 (새 데크탑을 구매함)
- 비용이 너무 많이 듬
- 과부하 등등의 문제가 생김

2. #### 가상머신 환경(VM ware)
- 하나의 컴퓨터 자원을 나누어서 하나의 컴퓨터로 여러 서비스를 할수 있게 됨.
- But 가상머신을 사용하면 하이퍼바지어가 있고 각각의  OS에 커널과 메모리 등등이 따로 관리되기에 컴퓨터 자원 비용이 비쌈 → 느림. 

3. #### Docker의 등장 (Docker)
- 하이퍼바이저의 자리를 도커가 대신함. 각각의 OS(컨테이너)에 커널과 메모리가 없음.
- 각각은 Host OS에서 실행됨
- Docker를 사용할 경우 VM에 비해서 장점  
  1. 각각의 서비스가 더 빠르고 확장성이 좋음. (각각의 서비스에 필요한 것을 컨테이너가 들고있음)
  2. 컴퓨터의 자원을 보다 더 효율적으로 활용할 수 있음 (새로운 서비스를 제공하는 한계는 Host역량만큼)

### - VMware and Docker 구조 비교
![2021-01-11__3-11-33](https://user-images.githubusercontent.com/57505385/201935580-a00d77bb-685b-4af4-a96e-6d1a76e34536.png)

### Docker에 대한 이해를 높여주는 참고 링크 
[https://www.popit.kr/개발자가-처음-docker-접할때-오는-멘붕-몇가지/](https://www.popit.kr/%EA%B0%9C%EB%B0%9C%EC%9E%90%EA%B0%80-%EC%B2%98%EC%9D%8C-docker-%EC%A0%91%ED%95%A0%EB%95%8C-%EC%98%A4%EB%8A%94-%EB%A9%98%EB%B6%95-%EB%AA%87%EA%B0%80%EC%A7%80/)

### 공부하면서 정리한 노션
https://enocent.notion.site/ft_server-11f78204255d4891adddbf196caca9bf
