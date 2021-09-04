echo "======================== Create Zip ========================="

rm -rf dist
mkdir dist
zip -r dist/lambda-devco.zip *

echo "=========================== Finish =========================="
echo "======================= Update Lambda ======================="

aws lambda update-function-code --function-name crearDotacion --zip-file fileb://dist/lambda-devco.zip --region us-east-1 --profile vivesSalud
echo "=========================== Finish =========================="
