.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;
.super Lorg/apache/tools/ant/Task;
.source "JarLibManifestTask.java"


# static fields
.field private static final CREATED_BY:Ljava/lang/String; = "Created-By"

.field private static final MANIFEST_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;"
        }
    .end annotation
.end field

.field private destFile:Ljava/io/File;

.field private extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

.field private final extraAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final optionals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$wAxYTcxHRejbaeWbktjp9hDZDzw([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->dependencies:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->optionals:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extraAttributes:Ljava/util/List;

    return-void
.end method

.method private appendExtensionList(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-static {v0, p4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p4

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-interface {p4, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string p4, " "

    invoke-static {p4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    .line 259
    invoke-virtual {p1, p2, p3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private appendExtraAttributes(Ljava/util/jar/Attributes;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extraAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;

    .line 207
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendLibraryList(Ljava/util/jar/Attributes;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Attributes;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 237
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 239
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Ljava/lang/String;Ljava/util/jar/Attributes;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$appendExtensionList$0(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toExtensions$1(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 0

    .line 272
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;->toExtensions(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p0

    return-object p0
.end method

.method private toExtensions(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 272
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask$$ExternalSyntheticLambda1;-><init>()V

    .line 273
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s is not a file."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destfile attribute not specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeManifest(Ljava/util/jar/Manifest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 219
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 218
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method


# virtual methods
.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtraAttribute;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extraAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConfiguredDepends(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConfiguredExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-void

    .line 111
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can not have multiple extensions defined in one library."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConfiguredOptions(Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionSet;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->optionals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Generating manifest "

    .line 151
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->validate()V

    .line 153
    new-instance v1, Ljava/util/jar/Manifest;

    invoke-direct {v1}, Ljava/util/jar/Manifest;-><init>()V

    .line 154
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 156
    sget-object v3, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Apache Ant "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    const-string v5, "ant.version"

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Created-By"

    .line 157
    invoke-virtual {v2, v4, v3}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendExtraAttributes(Ljava/util/jar/Attributes;)V

    .line 162
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->extension:Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    if-eqz v3, :cond_0

    .line 163
    invoke-static {v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Ljava/util/jar/Attributes;)V

    .line 167
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->dependencies:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->toExtensions(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 168
    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "lib"

    invoke-direct {p0, v2, v4, v6, v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendExtensionList(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;Ljava/lang/String;I)V

    .line 169
    invoke-direct {p0, v2, v6, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendLibraryList(Ljava/util/jar/Attributes;Ljava/lang/String;Ljava/util/List;)V

    .line 173
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->optionals:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->toExtensions(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 174
    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->OPTIONAL_EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "opt"

    invoke-direct {p0, v2, v4, v6, v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendExtensionList(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;Ljava/lang/String;I)V

    .line 175
    invoke-direct {p0, v2, v6, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->appendLibraryList(Ljava/util/jar/Attributes;Ljava/lang/String;Ljava/util/List;)V

    .line 178
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->log(Ljava/lang/String;I)V

    .line 179
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->writeManifest(Ljava/util/jar/Manifest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDestfile(Ljava/io/File;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/JarLibManifestTask;->destFile:Ljava/io/File;

    return-void
.end method
