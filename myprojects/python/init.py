class Students:

    def __init__(self, sname,ssub,sgrade):
        self.sname = sname
        self.ssub = ssub
        self.sgrade = sgrade

    def demofuc(self):
        print("i am "+self.sname)
        print("i am intersted in "+self.ssub)
        print("my grade is "+self.sgrade)


st1=Students("Anudeep","Python","A+")
st2=Students("Dileep","sql","A+")
st3=Students("deepu","ml","A+")


st1.demofuc()
st2.demofuc()
st3.demofuc()
