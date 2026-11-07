.class public Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;
.super Ljava/lang/Object;
.source "CVSEntry.java"


# instance fields
.field private author:Ljava/lang/String;

.field private final comment:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private final files:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->files:Ljava/util/Vector;

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->date:Ljava/util/Date;

    .line 41
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->author:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->comment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->files:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;

    invoke-direct {v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->files:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getFiles()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/RCSFile;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->files:Ljava/util/Vector;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->author:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getFiles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
