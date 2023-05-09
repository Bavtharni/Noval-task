import React, { useState } from 'react';
import axios from 'axios';
import {
  Container,
  Row,
  Col,
  Form,
  FormGroup,
  Label,
  Input,
  Button,
  Table,
} from 'reactstrap';
import  DataTable  from 'react-data-table-component';
const ServerPath = 'http://localhost:3001';


const authAxios = axios.create({
  baseURL: ServerPath,
  headers: {
    //header
  },
});

function App() {
  const [searchResults, setSearchResults] = useState([]);
  const [searchQuery, setSearchQuery] = useState({
    name: '',
    department: '',
    project: '',
    task: '',
  });

  const handleInputChange = (event) => {
    setSearchQuery({ ...searchQuery, [event.target.name]: event.target.value });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    try {
      const response = await authAxios.post('/user/search', searchQuery);
      setSearchResults(response.data);
    } catch (error) {
      console.error(error);
    }
  };
  const columns = [  {    name: 'Name',    selector: 'name',  },  {    name: 'Department',    selector: 'department_name',  },  {    name: 'Project',    selector: 'project_name',  },  {    name: 'Task',    selector: 'task_name',  },  {    name: 'Description',    selector: 'task_history_description',  },];

  return (
    <Container>
      <Form onSubmit={handleSubmit}>
        <Row>
          <Col md={3}>
            <FormGroup>
              <Label for="name">Name</Label>
              <Input
                type="text"
                name="name"
                id="name"
                value={searchQuery.name}
                onChange={handleInputChange}
              />
            </FormGroup>
          </Col>
          <Col md={3}>
            <FormGroup>
              <Label for="department">Department</Label>
              <Input
                type="text"
                name="department"
                id="department"
                value={searchQuery.department}
                onChange={handleInputChange}
              />
            </FormGroup>
          </Col>
          <Col md={3}>
            <FormGroup>
              <Label for="project">Project</Label>
              <Input
                type="text"
                name="project"
                id="project"
                value={searchQuery.project}
                onChange={handleInputChange}
              />
            </FormGroup>
          </Col>
          <Col md={3}>
            <FormGroup>
              <Label for="task">Task</Label>
              <Input
                type="text"
                name="task"
                id="task"
                value={searchQuery.task}
                onChange={handleInputChange}
              />
            </FormGroup>
          </Col>
        </Row>
        <Button color="primary">Search</Button>
      </Form>

      <div>
        
        <DataTable
  title="Search Results"
  columns={columns}
  data={searchResults}
  pagination
/>

      </div>
    </Container>
  );
}

export default App;
