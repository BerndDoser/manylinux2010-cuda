# manylinux2010 with CUDA

Start with

```
docker run -it -v $PWD:/work bernddoser/manylinux2010-cuda /bin/bash
```

Create manylinux2010 wheels with

```
/opt/python/<python version>/bin/pip wheel -v . -w output
auditwheel repair output/*.whl -w output
```
