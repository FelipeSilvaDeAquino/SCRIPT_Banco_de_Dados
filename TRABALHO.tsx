import { Input } from "@/src/app/components/input";
import { Image, StyleSheet, Text, View } from "react-native";
export default function index() {
  return (
    <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
      <Text style={style.title}>Bem-vindo.</Text>
      <Text style={style.subtitle}>
        (a) à disciplina de Programacio Mobile.
      </Text>

      <Image
        source={require("@/src/app/assets/cantaldi-JPG")}
        style={styles.illustration}
      />
    </View>
  );
}

const style = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#FDFDFD",
    padding: 32,
  },
  title: {
    fontSize: 30,
    fontWeight: "bold",
  },
  illustration: {
    width: "25%",
    height: 300,
  },
});

<View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
  <Text style={style.title}>Programação Mobile.</Text>
  <Text style={style.subtitle}>Acesse sua conta</Text>
  <View style={styles.form}>
    <Input placeholder="E-mail" />
    <Input placeholder="Senha" />
  </View>
</View>;

const styles = StyleSheet.create({
  container: {
    backgroundColor: "#FDFDFD",
    padding: 32,
  },
  title: {
    fontSize: 30,
    fontWeight: "bold",
  },
  subtitle: {
    fontSize: 18,
  },
  illustration: {
    width: "25%",
    height: 300,

    subtitle: {
      fontSize: 18,
    },

    form: {
      marginTop: 30,
      gap: 24,
    },

    illustration: {
      width: "25%",
      height: 300,
    },
  },
});
