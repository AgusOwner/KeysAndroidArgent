.class public Lorg/apache/tools/ant/taskdefs/CopyPath;
.super Lorg/apache/tools/ant/Task;
.source "CopyPath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR_NO_DESTDIR:Ljava/lang/String; = "No destDir specified"

.field public static final ERROR_NO_MAPPER:Ljava/lang/String; = "No mapper specified"

.field public static final ERROR_NO_PATH:Ljava/lang/String; = "No path specified"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private destDir:Ljava/io/File;

.field private granularity:J

.field private mapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field private path:Lorg/apache/tools/ant/types/Path;

.field private preserveLastModified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 66
    sget-object v0, Lorg/apache/tools/ant/taskdefs/CopyPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 67
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->granularity:J

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->preserveLastModified:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void

    .line 86
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one mapper allowed"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public execute()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, " to "

    const-string v0, "This task should have never been released and was obsoleted by ResourceCollection support in <copy> available since Ant 1.7.0.  Don\'t use it."

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v1, v0, v3}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->validateAttributes()V

    .line 175
    iget-object v0, v1, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    .line 176
    array-length v4, v0

    const/4 v5, 0x3

    if-nez v4, :cond_0

    const-string v0, "Path is empty"

    .line 177
    invoke-virtual {v1, v0, v5}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    return-void

    .line 181
    :cond_0
    array-length v4, v0

    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v0, v6

    .line 183
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object v8, v1, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {v8, v7}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    goto/16 :goto_5

    .line 189
    :cond_1
    array-length v13, v14

    move v12, v3

    :goto_1
    if-ge v12, v13, :cond_5

    aget-object v8, v14, v12

    .line 190
    new-instance v11, Ljava/io/File;

    iget-object v9, v1, Lorg/apache/tools/ant/taskdefs/CopyPath;->destDir:Ljava/io/File;

    invoke-direct {v11, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v15, v11}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipping self-copy of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    :goto_2
    move/from16 v23, v12

    move/from16 v24, v13

    move-object/from16 v18, v14

    move-object v5, v15

    goto :goto_3

    .line 196
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipping directory "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 201
    :cond_3
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copying "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v5}, Lorg/apache/tools/ant/taskdefs/CopyPath;->log(Ljava/lang/String;I)V

    .line 203
    sget-object v8, Lorg/apache/tools/ant/taskdefs/CopyPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-boolean v10, v1, Lorg/apache/tools/ant/taskdefs/CopyPath;->preserveLastModified:Z

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 204
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v15

    move/from16 v22, v10

    move-object v10, v11

    move-object v3, v11

    move-object/from16 v11, v16

    move/from16 v23, v12

    move-object/from16 v12, v17

    move/from16 v24, v13

    move/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v22

    move-object v5, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    .line 203
    :try_start_1
    invoke-virtual/range {v8 .. v17}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v12, v23, 0x1

    move-object v15, v5

    move-object/from16 v14, v18

    move/from16 v13, v24

    const/4 v3, 0x0

    const/4 v5, 0x3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v11

    move-object v5, v15

    .line 206
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to copy "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " due to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and I couldn\'t delete the corrupt "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_4
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public setDestDir(Ljava/io/File;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->destDir:Ljava/io/File;

    return-void
.end method

.method public setGranularity(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->granularity:J

    return-void
.end method

.method public setPath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setPathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/CopyPath;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setPreserveLastModified(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->preserveLastModified:Z

    return-void
.end method

.method protected validateAttributes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->destDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CopyPath;->path:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No path specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No mapper specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No destDir specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
