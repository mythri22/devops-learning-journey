from fastapi import FastAPI

app= FastAPI()

tasks= [{"id":1,"job":"docker","done":False},{"id":2,"job":"eks","done":False}]

@app.get("/")
def read_root():
	return {"message" :"Welcome to inside the docker"}

@app.get("/tasks")
def get_tasks():
	return tasks

@app.post("/tasks")
def add_tasks(task_var:dict):
	tasks.append(task_var)
	return task_var

