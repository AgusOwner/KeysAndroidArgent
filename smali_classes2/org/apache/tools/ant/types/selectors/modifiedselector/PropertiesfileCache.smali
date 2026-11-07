.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;
.super Ljava/lang/Object;
.source "PropertiesfileCache.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Cache;


# instance fields
.field private cache:Ljava/util/Properties;

.field private cacheDirty:Z

.field private cacheLoaded:Z

.field private cachefile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 173
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    .line 174
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->load()V

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachefile()Ljava/io/File;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 134
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheLoaded:Z

    .line 143
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    return-void
.end method

.method public save()V
    .locals 4

    .line 155
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 159
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cacheDirty:Z

    return-void
.end method

.method public setCachefile(Ljava/io/File;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cachefile:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/PropertiesfileCache;->cache:Ljava/util/Properties;

    .line 227
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<PropertiesfileCache:cachefile=%s;noOfEntries=%d>"

    .line 226
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
