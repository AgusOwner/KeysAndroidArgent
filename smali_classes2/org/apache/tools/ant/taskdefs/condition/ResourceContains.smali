.class public Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;
.super Ljava/lang/Object;
.source "ResourceContains.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private casesensitive:Z

.field private project:Lorg/apache/tools/ant/Project;

.field private refid:Ljava/lang/String;

.field private resource:Lorg/apache/tools/ant/types/Resource;

.field private substring:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->casesensitive:Z

    return-void
.end method

.method private resolveRefid()V
    .locals 8

    const/4 v0, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    instance-of v2, v1, Lorg/apache/tools/ant/types/Resource;

    if-nez v2, :cond_1

    .line 85
    instance-of v2, v1, Lorg/apache/tools/ant/types/ResourceCollection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v1

    check-cast v2, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 87
    invoke-interface {v2}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 88
    invoke-interface {v2}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_0
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v4, "Illegal value at \'%s\': %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v1, v5, v3

    invoke-direct {v2, v4, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 94
    :cond_1
    :goto_0
    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    return-void

    .line 81
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot retrieve refid; project unset"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 96
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    .line 97
    throw v1
.end method

.method private validate()V
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot set both resource and refid"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resolveRefid()V

    .line 123
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    if-eqz v0, :cond_3

    return-void

    .line 124
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both resource and substring are required in <resourcecontains>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized eval()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "There was a problem accessing resource : "

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->validate()V

    .line 138
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "Substring is empty; returning true"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 143
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 145
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 146
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 149
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    .line 150
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    :try_start_3
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    .line 153
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->casesensitive:Z

    if-nez v4, :cond_3

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 157
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 157
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 159
    :catch_0
    :try_start_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public setCasesensitive(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->casesensitive:Z

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public setRefid(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 2

    .line 66
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    return-void
.end method

.method public setSubstring(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    return-void
.end method
