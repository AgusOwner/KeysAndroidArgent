.class public Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibAvailableTask.java"


# instance fields
.field private final extensionFileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;"
        }
    .end annotation
.end field

.field private libraryFile:Ljava/io/File;

.field private propertyName:Ljava/lang/String;

.field private requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;


# direct methods
.method public static synthetic $r8$lambda$wAxYTcxHRejbaeWbktjp9hDZDzw([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$execute$0(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 0

    .line 111
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$execute$1(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Z
    .locals 0

    .line 117
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->isCompatibleWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Z

    move-result p0

    return p0
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File attribute not specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 138
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\'%s\' is not a file."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 136
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "File \'%s\' does not exist."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 129
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Extension element must be specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addConfiguredExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    return-void

    .line 81
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can not specify extension to search for multiple times."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConfiguredExtensionSet(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->validate()V

    .line 105
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->extensionFileSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 111
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    .line 114
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v1

    .line 113
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 116
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->requiredExtension:Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v2

    .line 117
    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->propertyName:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->libraryFile:Ljava/io/File;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibAvailableTask;->propertyName:Ljava/lang/String;

    return-void
.end method
