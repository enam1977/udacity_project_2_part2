from locust import HttpUser, TaskSet, task,constant,SequentialTaskSet

class MyReqRes(SequentialTaskSet):
    
    @task(2)
    def get_user(self):
        res=self.client.get("/")
        print("get Method status is", res.status.code)
    
    @task(2)
    def post_status(self):
        res=self.client.post("/?status=success")
        print("Post method status is", res.status.code)
    
class MyseqTest(HttpUser):
    wait_time=constant(3)
    host="https://flask-azure-project2.azurewebsites.net/"
    tasks=[MyReqRes]
