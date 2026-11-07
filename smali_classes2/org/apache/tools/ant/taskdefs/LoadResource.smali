.class public Lorg/apache/tools/ant/taskdefs/LoadResource;
.super Lorg/apache/tools/ant/Task;
.source "LoadResource.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private failOnError:Z

.field private final filterChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private property:Ljava/lang/String;

.field private quiet:Z

.field private src:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->encoding:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->filterChains:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    .line 214
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    return-void

    .line 215
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only single argument resource collections are supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addFilterChain(Lorg/apache/tools/ant/types/FilterChain;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->filterChains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "loaded "

    const-string v1, "Do not set property "

    const-string v2, "resource size = "

    .line 130
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    if-eqz v3, :cond_11

    .line 133
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 136
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "quiet and failonerror cannot both be set to true"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v3, :cond_4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v1, :cond_3

    .line 144
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v1, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    return-void

    .line 142
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "loading "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " into property "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    .line 151
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->encoding:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_1

    .line 152
    :cond_5
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 154
    :goto_1
    :try_start_0
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v6

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v9, -0x1

    cmp-long v2, v6, v9

    if-eqz v2, :cond_6

    .line 156
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const-string v2, "unknown"

    :goto_2
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    .line 155
    invoke-virtual {p0, v2, v8}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    long-to-int v2, v6

    if-eqz v2, :cond_8

    .line 163
    new-instance v1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    .line 166
    invoke-virtual {v10}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->filterChains:Ljava/util/List;

    invoke-direct {v1, v6, v7, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/Reader;Ljava/lang/Iterable;)V

    new-instance v3, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/apache/tools/ant/taskdefs/LoadResource$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/LoadResource;I)V

    .line 167
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->with(Ljava/util/function/Consumer;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->readFully()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_a

    .line 174
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 163
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v0

    .line 176
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as its length is 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v2, :cond_9

    move v2, v5

    goto :goto_4

    :cond_9
    const/4 v2, 0x2

    .line 176
    :goto_4
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :cond_a
    :goto_5
    if-eqz v2, :cond_e

    .line 181
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " := "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 194
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v1, :cond_c

    .line 197
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v1, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    goto :goto_6

    .line 195
    :cond_c
    throw v0

    :catch_1
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    if-nez v2, :cond_f

    .line 192
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz v0, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/LoadResource;->log(Ljava/lang/String;I)V

    :cond_e
    :goto_6
    return-void

    .line 190
    :cond_f
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LoadResource;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 134
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "output property not defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "source resource not defined"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-LoadResource(ILorg/apache/tools/ant/filters/util/ChainReaderHelper;)V
    .locals 4

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    :cond_0
    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->encoding:Ljava/lang/String;

    return-void
.end method

.method public final setFailonerror(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    return-void
.end method

.method public final setProperty(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->property:Ljava/lang/String;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->quiet:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/LoadResource;->failOnError:Z

    :cond_0
    return-void
.end method
