const https = require('https');
const AWS = require("aws-sdk");

const dynamo = new AWS.DynamoDB.DocumentClient();

exports.handler = async(event, context) => {
  let body;
  let statusCode = 200;
  const headers = {
    "Content-Type": "application/json",
    'Access-Control-Allow-Origin': '*'
  };
  try {
    switch (event.requestContext.http.method) {
      case "POST":
        // body = event.body
        let requestJSON = JSON.parse(event.body)
        body = await dynamo
          .put({
            TableName: "pruebaDevco",
            Item: {
              serial: requestJSON.serialEquipo,
              nombreEquipo: requestJSON.nombreEquipo,
              tipo: requestJSON.tipo,
              sistemaOperativo: requestJSON.sistemaOperativo,
              nombrePropietario: requestJSON.nombrePropietario,
              mailPropietario: requestJSON.mailPropietario,
              fechaAsignacion: requestJSON.fechaAsignacion
            }
          })
          .promise();
        body = {message: 'elemento agregado'}
      break;
    }
  }
  catch (err) {
    statusCode = 400;
    body = err.message;
  }
  finally {
    body = JSON.stringify(body);
  }
  return {
    statusCode,
    body,
    headers
  };
};
