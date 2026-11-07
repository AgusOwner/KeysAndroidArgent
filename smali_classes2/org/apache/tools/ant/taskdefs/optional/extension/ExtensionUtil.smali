.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;
.super Ljava/lang/Object;
.source "ExtensionUtil.java"


# direct methods
.method public static synthetic $r8$lambda$E2McIAGPWBO62AkYPcfatUmDGDA()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addExtension(Ljava/util/List;Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            "ZZ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationURL()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 146
    new-instance p3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 147
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtensionName()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendor()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendorID()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p3

    .line 157
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationURL()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 158
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object p3

    if-nez p3, :cond_2

    .line 159
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendorID()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 160
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendor()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 163
    new-instance p2, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 164
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtensionName()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 170
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationURL()Ljava/lang/String;

    move-result-object v7

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    .line 173
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static extractExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 69
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->getExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static getExtensions(Lorg/apache/tools/ant/Project;Ljava/util/List;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;)[",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/FileSet;

    .line 90
    instance-of v3, v1, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;

    if-eqz v3, :cond_1

    .line 91
    move-object v3, v1

    check-cast v3, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;

    .line 92
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->isIncludeImpl()Z

    move-result v4

    .line 93
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->isIncludeURL()Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move v3, v4

    .line 96
    :goto_0
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v5

    .line 98
    invoke-virtual {v1}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    .line 99
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-static {v8, v0, v4, v3}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->loadExtensions(Ljava/io/File;Ljava/util/List;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-array p0, v2, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 103
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-object p0
.end method

.method static getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 186
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 192
    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 189
    :cond_0
    :try_start_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "%s doesn\'t have a MANIFEST"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 186
    :try_start_4
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 193
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static loadExtensions(Ljava/io/File;Ljava/util/List;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 118
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p0

    .line 119
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 121
    invoke-static {p1, v3, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil;->addExtension(Ljava/util/List;Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    .line 118
    :try_start_3
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 124
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static toExtensions(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 54
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 55
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method
