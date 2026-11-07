.class public Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;
.super Lorg/apache/tools/ant/Task;
.source "ReplaceRegExp.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private byline:Z

.field private encoding:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private flags:Ljava/lang/String;

.field private preserveLastModified:Z

.field private regex:Lorg/apache/tools/ant/types/RegularExpression;

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private subs:Lorg/apache/tools/ant/types/Substitution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 138
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->preserveLastModified:Z

    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->encoding:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    const-string v2, ""

    .line 140
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    .line 143
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    .line 144
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    return-void
.end method

.method private multilineReplace(Ljava/io/Reader;Ljava/io/Writer;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result p1

    return p1
.end method

.method private replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Lorg/apache/tools/ant/types/RegularExpression;Lorg/apache/tools/ant/types/Substitution;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 518
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 266
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void

    .line 267
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only filesystem resources are supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public createRegexp()Lorg/apache/tools/ant/types/RegularExpression;
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    return-object v0

    .line 283
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one regular expression is allowed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSubstitution()Lorg/apache/tools/ant/types/Substitution;
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one substitution expression is allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doReplace(Lorg/apache/tools/ant/types/RegularExpression;Lorg/apache/tools/ant/types/Substitution;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 333
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object p1

    .line 335
    invoke-interface {p1, p3, p4}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Found match; substituting"

    const/4 v1, 0x4

    .line 336
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, p4}, Lorg/apache/tools/ant/util/regexp/Regexp;->substitute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method protected doReplace(Ljava/io/File;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "\'"

    const-string v4, " with flags: \'"

    const-string v5, "Replacing pattern \'"

    .line 353
    sget-object v6, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    const-string v8, "replace"

    const-string v9, ".txt"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v6

    .line 357
    :try_start_0
    iget-object v7, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->encoding:Ljava/lang/String;

    if-nez v7, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 358
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/nio/file/OpenOption;

    invoke-static {v8, v10}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 359
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    new-array v11, v9, [Ljava/nio/file/OpenOption;

    invoke-static {v10, v11}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 363
    :try_start_2
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 364
    :try_start_3
    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-direct {v13, v10, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 365
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/apache/tools/ant/types/RegularExpression;->getPattern(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' with \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 366
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' in \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 367
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v14, ""

    if-eqz v7, :cond_1

    :try_start_5
    const-string v7, " by line"

    goto :goto_1

    :cond_1
    move-object v7, v14

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    iget-object v7, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 365
    invoke-virtual {v1, v3, v4}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    .line 371
    iget-boolean v3, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_c

    .line 372
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 373
    :try_start_6
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 375
    :try_start_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v9

    move v14, v13

    .line 380
    :goto_3
    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v15

    const/16 v9, 0xd

    if-ne v15, v9, :cond_4

    if-eqz v13, :cond_3

    .line 385
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12, v7, v2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v12

    or-int/2addr v14, v12

    .line 387
    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(I)V

    .line 389
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    move-object v12, v9

    goto :goto_5

    :cond_3
    move v13, v5

    goto :goto_5

    :cond_4
    const/16 v11, 0xa

    if-ne v15, v11, :cond_6

    .line 397
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12, v7, v2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v12

    or-int/2addr v14, v12

    if-eqz v13, :cond_5

    .line 400
    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(I)V

    const/4 v13, 0x0

    .line 403
    :cond_5
    invoke-virtual {v7, v11}, Ljava/io/Writer;->write(I)V

    .line 405
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_6
    if-nez v13, :cond_7

    if-gez v15, :cond_9

    .line 409
    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v7, v2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->replaceAndWrite(Ljava/lang/String;Ljava/io/Writer;I)Z

    move-result v11

    or-int/2addr v14, v11

    if-eqz v13, :cond_8

    .line 412
    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(I)V

    const/4 v13, 0x0

    .line 416
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9
    if-ltz v15, :cond_a

    int-to-char v9, v15

    .line 420
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_a
    :goto_5
    if-gez v15, :cond_b

    move-object v12, v3

    move-object v13, v7

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v11, v3

    move-object v13, v7

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v11, v3

    goto :goto_9

    .line 426
    :cond_c
    :try_start_8
    invoke-direct {v1, v12, v13, v2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->multilineReplace(Ljava/io/Reader;Ljava/io/Writer;I)Z

    move-result v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 429
    :goto_6
    :try_start_9
    invoke-static {v12}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 430
    invoke-static {v13}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v10, :cond_d

    .line 432
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :cond_d
    if-eqz v8, :cond_e

    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v14, :cond_10

    const-string v2, "File has changed; saving the updated file"

    .line 434
    invoke-virtual {v1, v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 436
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 437
    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4, v6, v0, v5}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;Z)V

    .line 438
    iget-boolean v5, v1, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->preserveLastModified:Z

    if-eqz v5, :cond_f

    .line 439
    invoke-virtual {v4, v0, v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :cond_f
    const/4 v6, 0x0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 443
    :try_start_d
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t rename temporary file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    :cond_10
    const-string v0, "No change made"

    const/4 v2, 0x4

    .line 447
    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :goto_7
    if-eqz v6, :cond_11

    .line 451
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_11
    return-void

    :catchall_2
    move-exception v0

    move-object v11, v12

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v11, v12

    goto :goto_8

    :catchall_4
    move-exception v0

    const/4 v11, 0x0

    :goto_8
    const/4 v13, 0x0

    .line 429
    :goto_9
    :try_start_e
    invoke-static {v11}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 430
    invoke-static {v13}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 431
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_12

    .line 358
    :try_start_f
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_10
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_a
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    if-eqz v8, :cond_13

    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_12
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_b
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catchall_9
    move-exception v0

    if-eqz v6, :cond_14

    .line 451
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 453
    :cond_14
    throw v0
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    if-eqz v0, :cond_7

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-eqz v0, :cond_6

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "You cannot supply the \'file\' attribute and resource collections at the same time."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Ljava/lang/String;)I

    move-result v0

    .line 477
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    const-string v2, "\': "

    const-string v3, "An error occurred processing file: \'"

    const-string v4, "\'"

    const-string v5, "The following file is missing: \'"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    .line 482
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 485
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    .line 487
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-virtual {p0, v1, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    .line 490
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v1, :cond_5

    .line 491
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/tools/ant/types/Resource;

    .line 492
    const-class v8, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v7}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v7

    .line 494
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 496
    :try_start_1
    invoke-virtual {p0, v7, v0}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->doReplace(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    .line 498
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual {p0, v7, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 503
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 503
    invoke-virtual {p0, v7, v6}, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->log(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    return-void

    .line 467
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Nothing to replace expression with."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No expression to match."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setByLine(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    return-void
.end method

.method public setByLine(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->byline:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->file:Ljava/io/File;

    return-void
.end method

.method public setFlags(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->flags:Ljava/lang/String;

    return-void
.end method

.method public setMatch(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->regex:Lorg/apache/tools/ant/types/RegularExpression;

    .line 169
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one regular expression is allowed"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreserveLastModified(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->preserveLastModified:Z

    return-void
.end method

.method public setReplace(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ReplaceRegExp;->subs:Lorg/apache/tools/ant/types/Substitution;

    .line 187
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Substitution;->setExpression(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one substitution expression is allowed"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
