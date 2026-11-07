.class public Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;
.super Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;
.source "JasperC.java"


# instance fields
.field mangler:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->mangler:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;

    return-void
.end method

.method private getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    const-string v1, "only"

    .line 156
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "ignore"

    .line 158
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method private isTomcat5x()Z
    .locals 2

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "org.apache.jasper.tagplugins.jstl.If"

    .line 166
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 165
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private setupJasperCommand()Lorg/apache/tools/ant/types/CommandlineJava;
    .locals 4

    .line 110
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v1

    const-string v2, "-d"

    .line 112
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getDestdir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "-p"

    .line 113
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->isTomcat5x()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getVerbose()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    const-string v3, "this task doesn\'t support Tomcat 5.x properly, please use the Tomcat provided jspc task instead"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    :goto_0
    const-string v2, "-uriroot"

    .line 123
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getUriroot()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "-uribase"

    .line 124
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getUribase()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "-ieplugin"

    .line 125
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getIeplugin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "-webinc"

    .line 126
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebinc()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "-webxml"

    .line 127
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebxml()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "-die9"

    .line 128
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->isMapped()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-mapped"

    .line 131
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    .line 133
    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebApp()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getWebApp()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC$WebAppParameter;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "-webapp"

    .line 135
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V

    .line 137
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getCompileList()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->logAndAddFilesToCompile(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;Ljava/util/Vector;Lorg/apache/tools/ant/types/CommandlineJava;)V

    return-object v0
.end method


# virtual methods
.method public createMangler()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->mangler:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspMangler;

    return-object v0
.end method

.method public execute()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "using user supplied classpath: "

    const-string v1, "using system classpath: "

    .line 65
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v2

    const-string v3, "Using jasper compiler"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 66
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->setupJasperCommand()Lorg/apache/tools/ant/types/CommandlineJava;

    move-result-object v2

    .line 71
    :try_start_0
    new-instance v3, Lorg/apache/tools/ant/taskdefs/Java;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->owner:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/taskdefs/Java;-><init>(Lorg/apache/tools/ant/Task;)V

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v4

    .line 73
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v5

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 80
    :goto_0
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/Java;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setDir(Ljava/io/File;)V

    const-string v0, "org.apache.jasper.JspC"

    .line 82
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setClassname(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/CommandlineJava;->getJavaCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 85
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Java;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getFailonerror()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setFailonerror(Z)V

    const/4 v0, 0x1

    .line 90
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/taskdefs/Java;->setFork(Z)V

    const-string v1, "jasperc"

    .line 91
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/taskdefs/Java;->setTaskName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Java;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->deleteEmptyJavaFiles()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    instance-of v1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_2

    .line 96
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    throw v0

    .line 98
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error running jsp compiler: "

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JasperC;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->deleteEmptyJavaFiles()V

    .line 102
    throw v0
.end method
