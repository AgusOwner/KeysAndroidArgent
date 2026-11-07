.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;
.super Ljava/lang/Exception;
.source "IPlanetEjbc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EjbcException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcException;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    .line 575
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
