.class public Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibResolveTask.java"


# instance fields
.field private checkExtension:Z

.field private failOnError:Z

.field private propertyName:Ljava/lang/String;

.field private requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

.field private final resolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension:Z

    .line 68
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    return-void
.end method

.method private checkExtension(Ljava/io/File;)V
    .locals 6

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting property to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without verifying library satisfies extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 220
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->setLibraryProperty(Ljava/io/File;)V

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to see if it satisfies extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 224
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 226
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->isCompatibleWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->setLibraryProperty(Ljava/io/File;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " skipped as it does not satisfy extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 234
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File %s is not a file"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 212
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File %s does not exist"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private missingExtension()V
    .locals 3

    .line 196
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    const-string v1, "Unable to resolve extension to a file"

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void

    .line 197
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLibraryProperty(Ljava/io/File;)V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Extension element must be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property attribute must be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addConfiguredAnt(Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/AntResolver;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConfiguredExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-void

    .line 136
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can not specify extension to resolve multiple times."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConfiguredLocation(Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/LocationResolver;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConfiguredUrl(Lorg/apache/tools/ant/taskdefs/optional/extension/resolvers/URLResolver;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->validate()V

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resolving extension: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property Already set to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void

    .line 158
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Searching for extension using Resolver:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    const/4 v3, 0x1

    .line 168
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionResolver;->resolve(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :try_start_1
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 174
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " returned by resolver failed to satisfy extension due to: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    invoke-virtual {v5}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v6, v4, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 179
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to resolve extension to file using resolver "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " due to: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v5, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->missingExtension()V

    return-void
.end method

.method public setCheckExtension(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->checkExtension:Z

    return-void
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->failOnError:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibResolveTask;->propertyName:Ljava/lang/String;

    return-void
.end method
