.class public Lorg/apache/tools/ant/taskdefs/LoadProperties;
.super Lorg/apache/tools/ant/Task;
.source "LoadProperties.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private final filterChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private prefixValues:Z

.field private src:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    .line 60
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->filterChains:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->encoding:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefix:Ljava/lang/String;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefixValues:Z

    return-void
.end method

.method private declared-synchronized getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;
    .locals 2

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 234
    :cond_0
    instance-of v0, v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    if-eqz v0, :cond_1

    .line 237
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    check-cast v0, Lorg/apache/tools/ant/types/resources/JavaResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 235
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "expected a java resource as source"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 223
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 224
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only single-element resource collections are supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only a single source is supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addFilterChain(Lorg/apache/tools/ant/types/FilterChain;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->filterChains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public final execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "\n"

    .line 166
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    if-eqz v1, :cond_7

    .line 169
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    instance-of v0, v0, Lorg/apache/tools/ant/types/resources/JavaResource;

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to find resource "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->log(Ljava/lang/String;I)V

    return-void

    .line 175
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source resource does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->encoding:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 180
    :goto_0
    :try_start_0
    new-instance v2, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->src:Lorg/apache/tools/ant/types/Resource;

    .line 181
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->filterChains:Ljava/util/List;

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/Reader;Ljava/lang/Iterable;)V

    .line 182
    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->readFully()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 193
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 195
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Property;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Property;-><init>()V

    .line 196
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/Property;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    .line 197
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Property;->setPrefix(Ljava/lang/String;)V

    .line 198
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefixValues:Z

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Property;->setPrefixValues(Z)V

    .line 199
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Property;->addProperties(Ljava/util/Properties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v1, :cond_5

    .line 201
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 180
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 167
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A source resource is required."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 136
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/JavaResource;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setClasspath(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setPrefixValues(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/LoadProperties;->prefixValues:Z

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->getRequiredJavaResource()Lorg/apache/tools/ant/types/resources/JavaResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/JavaResource;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final setSrcFile(Ljava/io/File;)V
    .locals 1

    .line 79
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/LoadProperties;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method
