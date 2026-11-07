.class public Lorg/apache/tools/ant/taskdefs/optional/javah/ForkingJavah;
.super Ljava/lang/Object;
.source "ForkingJavah.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;


# static fields
.field public static final IMPLEMENTATION_NAME:Ljava/lang/String; = "forking"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/javah/SunJavah;->setupJavahCommand(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "javah"

    .line 52
    invoke-static {v2}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->log(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    .line 60
    :try_start_0
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v4, p1, v5, v6}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 63
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 64
    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 65
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    .line 67
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v6

    return p1

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error running "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -maybe it is not on the path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
