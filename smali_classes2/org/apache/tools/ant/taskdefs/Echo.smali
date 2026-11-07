.class public Lorg/apache/tools/ant/taskdefs/Echo;
.super Lorg/apache/tools/ant/Task;
.source "Echo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Echo$EchoLevel;
    }
.end annotation


# instance fields
.field protected append:Z

.field private encoding:Ljava/lang/String;

.field protected file:Ljava/io/File;

.field private force:Z

.field protected logLevel:I

.field protected message:Ljava/lang/String;

.field private output:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->file:Ljava/io/File;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->append:Z

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->force:Z

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->logLevel:I

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    return-void
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 64
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/StringResource;

    .line 65
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->output:Lorg/apache/tools/ant/types/Resource;

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/tools/ant/types/resources/LogOutputResource;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Echo;->logLevel:I

    invoke-direct {v1, p0, v2}, Lorg/apache/tools/ant/types/resources/LogOutputResource;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Echo;->append:Z

    const/4 v7, 0x0

    .line 68
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Echo;->force:Z

    .line 64
    invoke-static/range {v0 .. v10}, Lorg/apache/tools/ant/util/ResourceUtils;->copyResource(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setAppend(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->append:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 2

    .line 89
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Echo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Echo;->setOutput(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method public setForce(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->force:Z

    return-void
.end method

.method public setLevel(Lorg/apache/tools/ant/taskdefs/Echo$EchoLevel;)V
    .locals 0

    .line 137
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Echo$EchoLevel;->getLevel()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->logLevel:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 80
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->message:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Lorg/apache/tools/ant/types/Resource;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Echo;->output:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 101
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->output:Lorg/apache/tools/ant/types/Resource;

    .line 102
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Echo;->file:Ljava/io/File;

    return-void

    .line 99
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Cannot set > 1 output target"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
