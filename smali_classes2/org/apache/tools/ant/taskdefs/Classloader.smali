.class public Lorg/apache/tools/ant/taskdefs/Classloader;
.super Lorg/apache/tools/ant/Task;
.source "Classloader.java"


# static fields
.field public static final SYSTEM_LOADER_REF:Ljava/lang/String; = "ant.coreLoader"


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private name:Ljava/lang/String;

.field private parentFirst:Z

.field private parentName:Ljava/lang/String;

.field private reset:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->reset:Z

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    .line 71
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 10

    const-string v0, "Setting parent loader "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "only"

    .line 161
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    const-string v4, "build.sysclasspath"

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ant.coreLoader"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "Changing the system loader is disabled by build.sysclasspath=only"

    .line 163
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V

    return-void

    .line 168
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 170
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->reset:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move-object v2, v6

    :cond_3
    if-eqz v2, :cond_4

    .line 178
    instance-of v5, v2, Lorg/apache/tools/ant/AntClassLoader;

    if-nez v5, :cond_4

    const-string v0, "Referenced object is not an AntClassLoader"

    .line 179
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V

    return-void

    .line 185
    :cond_4
    check-cast v2, Lorg/apache/tools/ant/AntClassLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    const/4 v5, 0x4

    const-string v7, " "

    if-nez v2, :cond_9

    .line 191
    :try_start_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 192
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    instance-of v8, v2, Ljava/lang/ClassLoader;

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    move-object v6, v2

    :cond_7
    :goto_2
    if-nez v6, :cond_8

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 206
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 210
    check-cast v6, Ljava/lang/ClassLoader;

    .line 211
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    .line 210
    invoke-static {v6, v0, v2, v8}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v2

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "org.apache.tools.ant.taskdefs.optional"

    .line 218
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/AntClassLoader;->addLoaderPackageRoot(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->setCoreLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    if-eqz v4, :cond_b

    .line 223
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_b

    .line 224
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_b

    aget-object v6, v0, v4

    .line 225
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding to class loader "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V

    .line 229
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/tools/ant/AntClassLoader;->addPathElement(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 237
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Classloader;->log(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 137
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Classloader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Path;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentFirst(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentName:Ljava/lang/String;

    return-void
.end method

.method public setReset(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->reset:Z

    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 100
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Classloader;->parentFirst:Z

    return-void
.end method
