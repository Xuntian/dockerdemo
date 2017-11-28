# dockerdemo

## 用法
1. 编译镜像
```
git clone https://github.com/Xuntian/dockerdemo
cd dockerdemo 
docker build -t xuntian/dockerdemo ./

```

2. 运行
```
##  docker pull xuntian/dockerdemo
docker run -dti --name dockerdemo -p 80:8099 xuntian/dockerdemo
```