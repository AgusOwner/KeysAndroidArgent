.class public Lorg/apache/tools/ant/taskdefs/Antlib;
.super Lorg/apache/tools/ant/Task;
.source "Antlib.java"

# interfaces
.implements Lorg/apache/tools/ant/TaskContainer;


# static fields
.field public static final TAG:Ljava/lang/String; = "antlib"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 118
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->uri:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->tasks:Ljava/util/List;

    return-void
.end method

.method public static createAntlib(Lorg/apache/tools/ant/Project;Ljava/net/URL;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Antlib;
    .locals 6

    const-string v0, "antlib"

    const-string v1, " expecting antlib"

    const-string v2, "Unexpected tag "

    .line 67
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/4 v4, 0x0

    .line 68
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 69
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v3

    .line 76
    invoke-virtual {v3, p2}, Lorg/apache/tools/ant/ComponentHelper;->enterAntLib(Ljava/lang/String;)V

    .line 77
    new-instance p2, Lorg/apache/tools/ant/types/resources/URLResource;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/types/resources/URLResource;-><init>(Ljava/net/URL;)V

    :try_start_1
    const-string p1, "ant.projectHelper"

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 83
    instance-of v4, p1, Lorg/apache/tools/ant/ProjectHelper;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 84
    check-cast p1, Lorg/apache/tools/ant/ProjectHelper;

    .line 85
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ProjectHelper;->canParseAntlibDescriptor(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 91
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ProjectHelperRepository;->getProjectHelperForAntlib(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/ProjectHelper;

    move-result-object v5

    .line 95
    :cond_2
    invoke-virtual {v5, p0, p2}, Lorg/apache/tools/ant/ProjectHelper;->parseAntlibDescriptor(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/UnknownElement;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 102
    new-instance p2, Lorg/apache/tools/ant/taskdefs/Antlib;

    invoke-direct {p2}, Lorg/apache/tools/ant/taskdefs/Antlib;-><init>()V

    .line 103
    invoke-virtual {p2, p0}, Lorg/apache/tools/ant/taskdefs/Antlib;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 104
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/tools/ant/taskdefs/Antlib;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 105
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/taskdefs/Antlib;->setTaskName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Antlib;->init()V

    .line 107
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/UnknownElement;->configure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-virtual {v3}, Lorg/apache/tools/ant/ComponentHelper;->exitAntLib()V

    return-object p2

    .line 98
    :cond_3
    :try_start_2
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 110
    invoke-virtual {v3}, Lorg/apache/tools/ant/ComponentHelper;->exitAntLib()V

    .line 111
    throw p0

    :catch_0
    move-exception p0

    .line 71
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 142
    const-class v0, Lorg/apache/tools/ant/taskdefs/Antlib;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method


# virtual methods
.method public addTask(Lorg/apache/tools/ant/Task;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 4

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Task;

    .line 166
    check-cast v1, Lorg/apache/tools/ant/UnknownElement;

    .line 167
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Antlib;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 168
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->maybeConfigure()V

    .line 169
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getRealThing()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    instance-of v3, v2, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;

    if-eqz v3, :cond_1

    .line 179
    check-cast v2, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;

    .line 180
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->uri:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->setURI(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Antlib;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->setAntlibClassLoader(Ljava/lang/ClassLoader;)V

    .line 182
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->init()V

    .line 183
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;->execute()V

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 176
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;

    .line 177
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid task in antlib %s %s does not extend %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void
.end method

.method protected setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected setURI(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Antlib;->uri:Ljava/lang/String;

    return-void
.end method
