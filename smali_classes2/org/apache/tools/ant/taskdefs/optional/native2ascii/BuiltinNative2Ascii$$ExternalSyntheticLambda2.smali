.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Ljava/io/BufferedReader;

.field public final synthetic f$1:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/io/BufferedReader;Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;->f$0:Ljava/io/BufferedReader;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;->f$0:Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/UnaryOperator;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/BuiltinNative2Ascii;->lambda$translate$0(Ljava/io/BufferedReader;Ljava/util/function/UnaryOperator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
