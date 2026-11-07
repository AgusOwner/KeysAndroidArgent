.class public Lorg/apache/tools/ant/taskdefs/Expand;
.super Lorg/apache/tools/ant/Task;
.source "Expand.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final ERROR_MULTIPLE_MAPPERS:Ljava/lang/String; = "Cannot define more than one mapper"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final NATIVE_ENCODING:Ljava/lang/String; = "native-encoding"


# instance fields
.field private allowFilesToEscapeDest:Ljava/lang/Boolean;

.field private dest:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private failOnEmptyArchive:Z

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private overwrite:Z

.field private patternsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/PatternSet;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private resourcesSpecified:Z

.field private scanForUnicodeExtraFields:Z

.field private source:Ljava/io/File;

.field private stripAbsolutePathSpec:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Expand;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF8"

    .line 88
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Expand;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->overwrite:Z

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 74
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    .line 75
    new-instance v2, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resources:Lorg/apache/tools/ant/types/resources/Union;

    const/4 v2, 0x0

    .line 76
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resourcesSpecified:Z

    .line 77
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->failOnEmptyArchive:Z

    .line 78
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    .line 80
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->allowFilesToEscapeDest:Ljava/lang/Boolean;

    .line 98
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resourcesSpecified:Z

    .line 430
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 454
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    .line 420
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Expand;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addPatternset(Lorg/apache/tools/ant/types/PatternSet;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 441
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    .line 442
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "expand"

    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "!! expand is deprecated. Use unzip instead. !!"

    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resourcesSpecified:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "src attribute and/or resources must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 143
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Dest must be a directory."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 146
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    if-eqz v0, :cond_8

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "src \'"

    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Expand;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V

    goto :goto_2

    .line 155
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be read."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Src must not be a directory. Use nested filesets instead."

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 159
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->resources:Lorg/apache/tools/ant/types/resources/Union;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 160
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because it doesn\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 165
    :cond_9
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v2, :cond_a

    .line 167
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Expand;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-interface {v2}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V

    goto :goto_3

    .line 169
    :cond_a
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->expandResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)V

    goto :goto_3

    :cond_b
    return-void

    .line 138
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Dest attribute must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected expandFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expanding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v10, v0, v1}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getMapper()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 184
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    :try_start_0
    new-instance v13, Lorg/apache/tools/zip/ZipFile;

    iget-object v1, v10, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    iget-boolean v2, v10, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    invoke-direct {v13, v11, v1, v2}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :try_start_1
    invoke-virtual {v13}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v14

    const/4 v1, 0x1

    .line 193
    :goto_0
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/zip/ZipEntry;

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extracting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v10, v2, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 200
    :try_start_2
    invoke-virtual {v13, v1}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 202
    invoke-virtual {v1}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move-object v9, v0

    .line 199
    invoke-virtual/range {v1 .. v9}, Lorg/apache/tools/ant/taskdefs/Expand;->extractFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;ZLorg/apache/tools/ant/util/FileNameMapper;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :try_start_4
    invoke-static {v15}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    :goto_1
    invoke-static {v15}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 205
    throw v0

    :cond_0
    if-eqz v1, :cond_2

    .line 207
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getFailOnEmptyArchive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 208
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "archive \'%s\' is empty"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_2
    const-string v0, "expand complete"

    const/4 v1, 0x3

    .line 210
    invoke-virtual {v10, v0, v1}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 211
    :try_start_5
    invoke-virtual {v13}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 190
    :try_start_6
    invoke-virtual {v13}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while expanding "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to expand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as the file does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected expandResource(Lorg/apache/tools/ant/types/Resource;Ljava/io/File;)V
    .locals 0

    .line 226
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "only filesystem based resources are supported by this task."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected extractFile(Lorg/apache/tools/ant/util/FileUtils;Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;ZLorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 260
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_1

    .line 261
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v9, Ljava/io/File;->separatorChar:C

    if-eq v4, v9, :cond_0

    .line 262
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_0

    .line 263
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v8

    .line 264
    :goto_0
    iget-boolean v9, v1, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    const/4 v10, 0x3

    if-eqz v9, :cond_2

    if-eqz v4, :cond_2

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "stripped absolute path spec from "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v10}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    .line 267
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    :cond_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getAllowFilesToEscapeDest()Ljava/lang/Boolean;

    move-result-object v11

    if-eq v9, v11, :cond_4

    .line 270
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getAllowFilesToEscapeDest()Ljava/lang/Boolean;

    move-result-object v9

    if-nez v9, :cond_3

    iget-boolean v9, v1, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    if-nez v9, :cond_3

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v7

    .line 272
    :goto_2
    iget-object v9, v1, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    const-string v11, "skipping "

    if-eqz v9, :cond_10

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 273
    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    sget-char v12, Ljava/io/File;->separatorChar:C

    .line 274
    invoke-virtual {v9, v5, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 276
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 277
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 278
    iget-object v14, v1, Lorg/apache/tools/ant/taskdefs/Expand;->patternsets:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/tools/ant/types/PatternSet;

    .line 279
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/apache/tools/ant/types/PatternSet;->getIncludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "**"

    if-eqz v7, :cond_5

    .line 280
    array-length v10, v7

    if-nez v10, :cond_6

    .line 282
    :cond_5
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v7

    .line 285
    :cond_6
    array-length v10, v7

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_8

    move/from16 p5, v10

    aget-object v10, v7, v5

    move-object/from16 v16, v7

    .line 286
    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v10, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    sget-char v10, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x5c

    .line 287
    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 288
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    :cond_7
    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v10, p5

    move-object/from16 v7, v16

    const/16 v6, 0x2f

    goto :goto_4

    .line 294
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/Expand;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v15, v5}, Lorg/apache/tools/ant/types/PatternSet;->getExcludePatterns(Lorg/apache/tools/ant/Project;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 296
    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_a

    aget-object v10, v5, v7

    .line 297
    sget-char v15, Ljava/io/File;->separatorChar:C

    move-object/from16 p5, v5

    const/16 v5, 0x2f

    invoke-virtual {v10, v5, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    sget-char v15, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x5c

    .line 298
    invoke-virtual {v10, v5, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 299
    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 300
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 302
    :cond_9
    invoke-interface {v13, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p5

    goto :goto_5

    :cond_a
    const/16 v5, 0x5c

    const/16 v6, 0x2f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x3

    goto/16 :goto_3

    .line 308
    :cond_b
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 309
    invoke-static {v6, v9}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    .line 315
    :goto_6
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 316
    invoke-static {v7, v9}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v5, 0x0

    :cond_f
    if-nez v5, :cond_10

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as it is excluded or not included."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    return-void

    :cond_10
    move-object/from16 v5, p8

    .line 330
    invoke-interface {v5, v3}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 331
    array-length v6, v5

    if-nez v6, :cond_12

    .line 332
    :cond_11
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    :cond_12
    const/4 v6, 0x0

    .line 334
    aget-object v5, v5, v6

    invoke-virtual {v0, v2, v5}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v4, :cond_13

    const/4 v4, 0x1

    .line 335
    invoke-virtual {v0, v2, v5, v4}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v6

    if-nez v6, :cond_13

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " as its target "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is outside of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 336
    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    return-void

    .line 342
    :cond_13
    :try_start_0
    iget-boolean v2, v1, Lorg/apache/tools/ant/taskdefs/Expand;->overwrite:Z

    if-nez v2, :cond_14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 343
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual/range {p6 .. p6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-ltz v2, :cond_14

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as it is up-to-date"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    return-void

    .line 349
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expanding "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 354
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_15
    if-eqz p7, :cond_16

    .line 358
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_8

    :cond_16
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 361
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v6}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v6, p4

    .line 363
    :goto_7
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_17

    .line 364
    invoke-virtual {v3, v2, v4, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :cond_17
    if-eqz v3, :cond_18

    .line 366
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 369
    :cond_18
    :goto_8
    invoke-virtual/range {p6 .. p6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_19

    .line 361
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_9
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to expand to file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/tools/ant/taskdefs/Expand;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_a
    return-void
.end method

.method public getAllowFilesToEscapeDest()Ljava/lang/Boolean;
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->allowFilesToEscapeDest:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFailOnEmptyArchive()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->failOnEmptyArchive:Z

    return v0
.end method

.method protected getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    return-object v0
.end method

.method public getScanForUnicodeExtraFields()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    return v0
.end method

.method protected internalSetEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "native-encoding"

    .line 479
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 482
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->encoding:Ljava/lang/String;

    return-void
.end method

.method protected internalSetScanForUnicodeExtraFields(Z)V
    .locals 0

    .line 522
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->scanForUnicodeExtraFields:Z

    return-void
.end method

.method public setAllowFilesToEscapeDest(Z)V
    .locals 0

    .line 540
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->allowFilesToEscapeDest:Ljava/lang/Boolean;

    return-void
.end method

.method public setDest(Ljava/io/File;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->dest:Ljava/io/File;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 467
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Expand;->internalSetEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setFailOnEmptyArchive(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->failOnEmptyArchive:Z

    return-void
.end method

.method public setOverwrite(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->overwrite:Z

    return-void
.end method

.method public setScanForUnicodeExtraFields(Z)V
    .locals 0

    .line 510
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Expand;->internalSetScanForUnicodeExtraFields(Z)V

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->source:Ljava/io/File;

    return-void
.end method

.method public setStripAbsolutePathSpec(Z)V
    .locals 0

    .line 500
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Expand;->stripAbsolutePathSpec:Z

    return-void
.end method
