.class public Lorg/apache/tools/ant/taskdefs/Recorder;
.super Lorg/apache/tools/ant/Task;
.source "Recorder.java"

# interfaces
.implements Lorg/apache/tools/ant/SubBuildListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Recorder$ActionChoices;,
        Lorg/apache/tools/ant/taskdefs/Recorder$VerbosityLevelChoices;
    }
.end annotation


# static fields
.field private static recorderEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/RecorderEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Ljava/lang/Boolean;

.field private emacsMode:Z

.field private filename:Ljava/lang/String;

.field private loglevel:I

.field private start:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->append:Ljava/lang/Boolean;

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->loglevel:I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->emacsMode:Z

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 319
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Recorder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Recorder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Recorder;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 320
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->removeBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    return-void
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->cleanup()V

    return-void
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting a recorder for name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Recorder;->getRecorder(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    move-result-object v0

    .line 167
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->loglevel:I

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setMessageOutputLevel(I)V

    .line 168
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->emacsMode:Z

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setEmacsMode(Z)V

    .line 169
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->reopenFile()V

    .line 172
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setRecordState(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setRecordState(Ljava/lang/Boolean;)V

    .line 175
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->closeFile()V

    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No filename specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getRecorder(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/RecorderEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 218
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->append:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFile(Z)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->openFile(Z)V

    .line 229
    :goto_0
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 230
    sget-object p2, Lorg/apache/tools/ant/taskdefs/Recorder;->recorderEntries:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    return-void
.end method

.method synthetic lambda$cleanup$0$org-apache-tools-ant-taskdefs-Recorder(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 319
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/taskdefs/RecorderEntry;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/RecorderEntry;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public setAction(Lorg/apache/tools/ant/taskdefs/Recorder$ActionChoices;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Recorder$ActionChoices;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    goto :goto_0

    .line 107
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->start:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 117
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->append:Ljava/lang/Boolean;

    return-void
.end method

.method public setEmacsMode(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->emacsMode:Z

    return-void
.end method

.method public setLogLevel(Lorg/apache/tools/ant/types/LogLevel;)V
    .locals 0

    .line 146
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/LogLevel;->getLevel()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->loglevel:I

    return-void
.end method

.method public setLoglevel(Lorg/apache/tools/ant/taskdefs/Recorder$VerbosityLevelChoices;)V
    .locals 0

    .line 136
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Recorder$VerbosityLevelChoices;->getLevel()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->loglevel:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder;->filename:Ljava/lang/String;

    return-void
.end method

.method public subBuildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 1

    .line 308
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 309
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Recorder;->cleanup()V

    :cond_0
    return-void
.end method

.method public subBuildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    return-void
.end method
