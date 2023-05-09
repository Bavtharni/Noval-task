const http = require('http');//http request
const fs = require('fs');//file system
const socketio = require('socket.io');

const server = http.createServer((req, res) => {
  // handle HTTP requests if needed
});

const io = socketio(server);

io.on('connection', (socket) => {
  console.log('A user has connected.');

  const stream = fs.createReadStream('./activity.txt');
  //stream.write('This is the first line.\n');
  stream.on('data', (data) => {
    const lines = data.toString().split('\n');

    // Send the last line to the client
    socket.emit('activity', lines[lines.length - 2]);
  });
});

server.listen(3000, () => {
  console.log('Server is running on port 3000.');
});
