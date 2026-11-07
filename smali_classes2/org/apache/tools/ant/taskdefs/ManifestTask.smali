.class public Lorg/apache/tools/ant/taskdefs/ManifestTask;
.super Lorg/apache/tools/ant/Task;
.source "ManifestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;
    }
.end annotation


# static fields
.field public static final VALID_ATTRIBUTE_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"


# instance fields
.field private encoding:Ljava/lang/String;

.field private flattenClassPaths:Z

.field private manifestFile:Ljava/io/File;

.field private mergeClassPaths:Z

.field private mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

.field private nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;


# direct methods
.method public static synthetic $r8$lambda$U01hvaVAKsJqXdxfAUGYhxw0CII(Lorg/apache/tools/ant/taskdefs/ManifestTask;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->checkAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    .line 81
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->flattenClassPaths:Z

    .line 102
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    const-string v1, "replace"

    .line 103
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private checkAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_2

    .line 159
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"

    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 163
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Manifest attribute names must not contain \'%c\'"

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    return-void

    .line 155
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 156
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Manifest attribute names must not start with \'%c\'."

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->checkAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest;->addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method

.method public addConfiguredSection(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/ManifestTask;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest;->addConfiguredSection(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    return-void
.end method

.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 225
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->encoding:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "UTF-8"

    :cond_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 231
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    .line 232
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v1, v4}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 231
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 238
    :goto_1
    new-instance v4, Lorg/apache/tools/ant/BuildException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to read "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 235
    :goto_2
    new-instance v4, Lorg/apache/tools/ant/BuildException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Existing manifest "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    :goto_3
    move-object v2, v1

    goto :goto_5

    .line 242
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    .line 245
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Failed to create missing parent directory for %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_4
    move-object v4, v2

    .line 252
    :goto_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->getWarnings()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/ManifestTask;)V

    .line 253
    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :try_start_5
    const-string v1, "update"

    .line 255
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_4

    .line 257
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    goto :goto_6

    :cond_4
    if-nez v4, :cond_5

    goto :goto_6

    .line 259
    :cond_5
    throw v4

    .line 263
    :cond_6
    :goto_6
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    invoke-virtual {v0, v1, v3, v4}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V
    :try_end_5
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_5 .. :try_end_5} :catch_5

    .line 268
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "Manifest has not changed, do not recreate"

    const/4 v1, 0x3

    .line 269
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->log(Ljava/lang/String;I)V

    return-void

    .line 274
    :cond_7
    :try_start_6
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    .line 275
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    sget-object v4, Lorg/apache/tools/ant/taskdefs/Manifest;->JAR_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 276
    :try_start_7
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->flattenClassPaths:Z

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->write(Ljava/io/PrintWriter;Z)V

    .line 277
    invoke-virtual {v1}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v0, :cond_8

    .line 280
    :try_start_8
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    return-void

    .line 278
    :cond_8
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered an error writing manifest"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    .line 274
    :try_start_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    .line 281
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to write "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :catch_5
    move-exception v0

    .line 265
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Manifest is invalid"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 222
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the file attribute is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-ManifestTask(Ljava/lang/String;)V
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manifest warning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    return-void
.end method

.method public setFlattenAttributes(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->flattenClassPaths:Z

    return-void
.end method

.method public setMergeClassPathAttributes(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    return-void
.end method

.method public setMode(Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    return-void
.end method
