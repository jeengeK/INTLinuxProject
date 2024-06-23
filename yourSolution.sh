~/src$ cat yourSolution.sh
#!/bin/bash
echo "Generating secret..."
secret=(814c5723c21e7e90a3eae36c8df3c513)
echo "Secret generated: $secret"
echo $secret > .secret


