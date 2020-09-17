printf '\033c';
wget https://js.dashio.repl.co/x-repl -q -O ../index.js;
rm -rf ../.apt/usr
mkdir -p ../.apt/usr
cp -r ./library/* /home/runner/.apt/usr/
echo - Volant -
./volant/bin/volant compile main.vo -clang "-I/home/runner/.apt/usr/include"
res1=$(date +%s.%N)
./a.out
res2=$(date +%s.%N)
echo RUNTIME: $(python -c "print(${res2} - ${res1})")s
rm a.out
echo - Obratnaya -
cd obratnaya
res1=$(date +%s.%N)
./obrya ../main.oba
res2=$(date +%s.%N)
echo RUNTIME: $(python -c "print(${res2} - ${res1})")s
cd ../..
echo - Javascript - #for now
res1=$(date +%s.%N)
node lang-battle/test.js
#node index.js
res2=$(date +%s.%N)
echo RUNTIME: $(python -c "print(${res2} - ${res1})")s