.class public Lorg/apache/tools/ant/taskdefs/Concat$TextElement;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextElement"
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;

.field private filtering:Z

.field private trim:Z

.field private trimLeading:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trimLeading:Z

    .line 94
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trim:Z

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->filtering:Z

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getFiltering()Z

    move-result p0

    return p0
.end method

.method private getFiltering()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->filtering:Z

    return v0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 9

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 181
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 186
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trimLeading:Z

    if-eqz v0, :cond_7

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v2, :cond_6

    aget-char v7, v1, v5

    if-eqz v6, :cond_3

    const/16 v8, 0x20

    if-eq v7, v8, :cond_5

    const/16 v8, 0x9

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    .line 196
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5

    :cond_4
    move v6, v4

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 201
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 203
    :cond_7
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trim:Z

    if-eqz v0, :cond_8

    .line 204
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 206
    :cond_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 140
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 144
    :goto_1
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 146
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_2
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 149
    throw p1

    .line 132
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File %s does not exist."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public setFiltering(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->filtering:Z

    return-void
.end method

.method public setTrim(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trim:Z

    return-void
.end method

.method public setTrimLeading(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trimLeading:Z

    return-void
.end method
