.class public Lorg/apache/tools/ant/ExitException;
.super Ljava/lang/SecurityException;
.source "ExitException.java"


# static fields
.field private static final serialVersionUID:J = 0x2679db03a27a0c83L


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExitException: status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    iput p1, p0, Lorg/apache/tools/ant/ExitException;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    iput p2, p0, Lorg/apache/tools/ant/ExitException;->status:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/apache/tools/ant/ExitException;->status:I

    return v0
.end method
