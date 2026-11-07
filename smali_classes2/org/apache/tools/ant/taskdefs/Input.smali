.class public Lorg/apache/tools/ant/taskdefs/Input;
.super Lorg/apache/tools/ant/Task;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Input$Handler;,
        Lorg/apache/tools/ant/taskdefs/Input$HandlerType;
    }
.end annotation


# instance fields
.field private addproperty:Ljava/lang/String;

.field private defaultvalue:Ljava/lang/String;

.field private handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

.field private message:Ljava/lang/String;

.field private messageAttribute:Z

.field private validargs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->validargs:Ljava/lang/String;

    const-string v1, ""

    .line 147
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->messageAttribute:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    return-void
.end method

.method public createHandler()Lorg/apache/tools/ant/taskdefs/Input$Handler;
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Input$Handler;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Input$Handler;-><init>(Lorg/apache/tools/ant/taskdefs/Input;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define > 1 nested input handler"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skipping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already been set."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Input;->log(Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->validargs:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x2c

    .line 222
    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/StringUtils;->split(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v0

    .line 223
    new-instance v1, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/input/InputRequest;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/input/InputRequest;-><init>(Ljava/lang/String;)V

    .line 227
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/input/InputRequest;->setDefaultValue(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Input;->handler:Lorg/apache/tools/ant/taskdefs/Input$Handler;

    if-nez v0, :cond_2

    .line 230
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getInputHandler()Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v0

    goto :goto_1

    .line 231
    :cond_2
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Input$Handler;->access$100(Lorg/apache/tools/ant/taskdefs/Input$Handler;)Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v0

    .line 233
    :goto_1
    invoke-interface {v0, v1}, Lorg/apache/tools/ant/input/InputHandler;->handleInput(Lorg/apache/tools/ant/input/InputRequest;)V

    .line 235
    invoke-virtual {v1}, Lorg/apache/tools/ant/input/InputRequest;->getInput()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v0, v1

    .line 240
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setAddproperty(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->addproperty:Ljava/lang/String;

    return-void
.end method

.method public setDefaultvalue(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->defaultvalue:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->message:Ljava/lang/String;

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->messageAttribute:Z

    return-void
.end method

.method public setValidargs(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Input;->validargs:Ljava/lang/String;

    return-void
.end method
