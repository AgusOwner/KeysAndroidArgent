.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/tools/ant/util/Native2AsciiUtils;->ascii2native(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
