import { useEffect, useState } from 'react';//useEffect and useState are two hooks in React that allow you to manage state and side effects in functional components.
import io from 'socket.io-client';//socket.io-client is a JavaScript library that allows clients to communicate with servers that use Socket.IO. It provides a simple API for establishing a WebSocket connection with a server and sending/receiving data in real-time.
import { Card, CardBody, CardTitle, CardText } from 'reactstrap';
const socket = io('http://localhost:3000');//This code initializes a Socket.IO client and connects it to the Socket.IO server running at http://localhost:3000. The io() function is provided by the socket.io-client library and returns a Socket instance that can be used to communicate with the server using a variety of methods

function App() {
  const [activity, setActivity] = useState('');

  useEffect(() => {
    socket.on('activity', (data) => {
      setActivity(data);
    });
  }, []);

  return (
    <div className="d-flex justify-content-center align-items-center">
      <Card>
        <CardBody>
          <CardTitle>Last Sentence:</CardTitle>
          <CardText>{activity}</CardText>
        </CardBody>
      </Card>
    </div>
    
  );
}

export default App;
