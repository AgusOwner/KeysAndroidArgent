.class public Lorg/apache/tools/ant/taskdefs/AntlibDefinition;
.super Lorg/apache/tools/ant/Task;
.source "AntlibDefinition.java"


# instance fields
.field private antlibClassLoader:Ljava/lang/ClassLoader;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAntlibClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->antlibClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAntlibClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->antlibClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "antlib:org.apache.tools.ant"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "ant:"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->uri:Ljava/lang/String;

    return-void

    .line 51
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Attempt to use a reserved URI %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
