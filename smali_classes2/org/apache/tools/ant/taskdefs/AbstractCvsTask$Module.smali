.class public final Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;
.super Ljava/lang/Object;
.source "AbstractCvsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;->name:Ljava/lang/String;

    return-void
.end method
