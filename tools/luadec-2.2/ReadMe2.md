Luadec compiled in 32 bits

```
git clone https://github.com/viruscamp/luadec
cd luadec
git submodule update --init lua-5.3

cd lua-5.3/
make clean
make linux MYCFLAGS="-m32" MYLDFLAGS="-m32"

cd ../../luadec
make clean
make LUAVER=5.3 MYCFLAGS="-m32" MYLDFLAGS="-m32"
```
