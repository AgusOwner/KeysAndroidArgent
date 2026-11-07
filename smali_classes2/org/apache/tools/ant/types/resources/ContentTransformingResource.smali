.class public abstract Lorg/apache/tools/ant/types/resources/ContentTransformingResource;
.super Lorg/apache/tools/ant/types/resources/ResourceDecorator;
.source "ContentTransformingResource.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 115
    const-class v0, Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->isAppendSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    const-class v2, Lorg/apache/tools/ant/types/resources/Appendable;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/Appendable;

    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/resources/ContentTransformingResource;Lorg/apache/tools/ant/types/resources/Appendable;)V

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    .line 127
    :cond_1
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->wrapStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSize()J
    .locals 6

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2000

    :try_start_1
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    .line 64
    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    int-to-long v1, v4

    if-eqz v0, :cond_1

    .line 68
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-wide v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 60
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "caught exception while reading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected isAppendSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$as$0$org-apache-tools-ant-types-resources-ContentTransformingResource(Lorg/apache/tools/ant/types/resources/Appendable;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Lorg/apache/tools/ant/types/resources/Appendable;->getAppendOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ContentTransformingResource;->wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected abstract wrapStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
