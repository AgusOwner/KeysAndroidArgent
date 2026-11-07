.class public Lorg/apache/tools/ant/taskdefs/email/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Header;->value:Ljava/lang/String;

    return-void
.end method
