.class public Lorg/apache/tools/ant/taskdefs/SendEmail;
.super Lorg/apache/tools/ant/taskdefs/email/EmailTask;
.source "SendEmail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;-><init>()V

    return-void
.end method


# virtual methods
.method public setMailport(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/SendEmail;->setMailport(I)V

    return-void
.end method
