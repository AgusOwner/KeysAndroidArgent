.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;
.super Ljava/lang/Object;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputProperty"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1192
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1208
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1201
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$OutputProperty;->value:Ljava/lang/String;

    return-void
.end method
