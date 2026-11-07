.class public Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;
.super Ljava/lang/Object;
.source "CvsTagEntry.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private prevRevision:Ljava/lang/String;

.field private revision:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->filename:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousRevision()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, " was removed"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "; previous revision was "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " is new; current revision is "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, " has changed from "

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->prevRevision:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->revision:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
