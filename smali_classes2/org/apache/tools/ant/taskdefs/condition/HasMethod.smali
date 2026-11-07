.class public Lorg/apache/tools/ant/taskdefs/condition/HasMethod;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "HasMethod.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private classname:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private field:Ljava/lang/String;

.field private ignoreSystemClasses:Z

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->ignoreSystemClasses:Z

    return-void
.end method

.method private isFieldFound(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 169
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->field:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isMethodFound(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 178
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "class \""

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->ignoreSystemClasses:Z

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 111
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception v1

    .line 116
    :try_start_2
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" was found but a SecurityException has been raised while loading it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 130
    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 132
    :cond_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 137
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not load dependent class \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" for class \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :catch_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" was not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public eval()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classname:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 149
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    const/4 v2, 0x0

    .line 151
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 152
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->method:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->isMethodFound(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eq v1, v3, :cond_0

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 162
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    :cond_0
    return v0

    .line 155
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->field:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 156
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->isFieldFound(Ljava/lang/Class;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eq v1, v3, :cond_2

    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 162
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    :cond_2
    return v0

    .line 158
    :cond_3
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Neither method nor field defined"

    invoke-direct {v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 160
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eq v1, v3, :cond_4

    if-eqz v3, :cond_4

    .line 161
    invoke-virtual {v3}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 162
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 164
    :cond_4
    throw v0

    .line 147
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No classname defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->classname:Ljava/lang/String;

    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->field:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreSystemClasses(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->ignoreSystemClasses:Z

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/HasMethod;->method:Ljava/lang/String;

    return-void
.end method
