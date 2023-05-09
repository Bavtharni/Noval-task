module.exports = {
    search:function(con,data,callback){
          con.query(`SELECT u.name, d.name as department_name, p.name as project_name, t.name as task_name, th.description as task_history_description FROM user u LEFT JOIN department d ON u.department_id = d.id LEFT JOIN project p ON d.id = p.department_id LEFT JOIN task t ON p.id = t.project_id LEFT JOIN task_history th ON t.id = th.task_id WHERE u.name LIKE '%${data.name}%' OR d.name LIKE '%${data.department}%' OR p.name LIKE '%${data.project}%' OR t.name LIKE '%${data.task}%' OR th.description LIKE '%${data.description}%'
`,callback) 
 
    },
    
}